<script>
import { page_path_b } from '@ctx-core/sapper'
import { __path__home } from '@btakita/web-lib/store'
import {
	__theme__invert,
	invert__theme,
	__class__theme__invert,
} from '@ctx-core/theme/store'
import Handle__Nav from '@ctx-core/nav/Handle__Nav.svelte'
import Content__Nav from '@ctx-core/nav/Content__Nav.svelte'
import Item__Nav from '@ctx-core/nav/Item__Nav.svelte'
import FA_project_diagram_solid from '@ctx-core/fontawesome/ui/FA-project-diagram-solid.svelte'
import FA_sun_solid from '@ctx-core/fontawesome/ui/FA-sun-solid.svelte'
import FA_moon_regular from '@ctx-core/fontawesome/ui/FA-moon-regular.svelte'
export let ctx
const page_path = page_path_b(ctx)
</script>

<Handle__Nav class="Handle__Nav__Holochain {$__class__theme__invert}"></Handle__Nav>
<div class="container__Content__Nav" class:path__home="{$__path__home}">
	<Content__Nav class="{$__class__theme__invert}">
		<Item__Nav
			href="/"
			class="container__logo {$__class__theme__invert}"
		>
			<FA_project_diagram_solid width="40px" height="40px"></FA_project_diagram_solid>
		</Item__Nav>
		<Item__Nav
			href="/dev"
			selected="{$__path__sapper.startsWith('/dev')}"
			class="child_nav {$__class__theme__invert}"
		>dev</Item__Nav>
		<Item__Nav
			href="/about"
			selected="{$__path__sapper.startsWith('/about')}"
			class="child_nav {$__class__theme__invert}"
		>about</Item__Nav>
		<div class="theme {$__class__theme__invert}">
			<a
				href="."
				on:click|preventDefault={invert__theme}
			><svelte:component
				this="{$__theme__invert ? FA_sun_solid : FA_moon_regular}"></svelte:component></a>
		</div>
	</Content__Nav>
</div>

<style type="text/scss" global>
	@import '~@btakita/css/variables';
	@import '~@ctx-core/nav/lib';
	$width--wide: $width--max--tablet;
	@include Handle__Nav($width--wide: $width--wide);
	@include Content__Nav($width--wide: $width--wide);
	@include Item__Nav__selected-underline($background: $color--a);
	.container__Content__Nav {
		position: relative;
		display: flex;
		width: 100%;
		&.path__home {
			.child_nav {
				@media(max-width: #{$width--wide}) {
					display: block;
				}
			}
		}
		.theme {
			margin: 0 1rem 0 auto;
			@media(max-width: #{$width--wide}) {
				position: static;
				margin: 0;
				a {
					display: flex;
					align-items: center;
					justify-content: center;
				}
			}
			&.theme__invert {
				svg {
					fill: $color--header--invert;
				}
			}
			svg {
				height: 1.2rem;
				width: 1.2rem;
				fill: $color--header;
			}
		}
		> * {
			a {
				margin-right: 0.8rem;
				color: $color--header;
				fill: $color--header;
				@media(max-width: #{$width--wide}) {
					padding: 0.4rem 0;
				}
				&.theme__invert {
					color: $color--header--invert;
				}
				&.selected {
					box-shadow: 0 2px 0 $color--a--mid;
				}
			}
		}
	}
	@include in-Item__Nav() {
		&.theme__invert {
			&.selected {
				&::after {
					background: $color--a--invert;
				}
			}
		}
	}
	@media(max-width: #{$width--wide}) {
		@include Item__Nav__selected-background(
			$background: $color--a
		);
		@include in-Item__Nav() {
			&.theme__invert {
				&.selected {
					background: invert($color--a--invert);
				}
			}
		}
		@include Item__Nav__cancel-selected-underline();
	}
	@include Content__Nav__slide-from-right($width--wide: $width--wide);
	.Handle__Nav {
		fill: $color--a;
		@media(max-width: #{$width--wide}) {
			position: absolute;
			top: 0.6rem;
			right: 0.4rem;
		}
		&.theme__invert {
			fill: $color--a--invert;
		}
	}
	.Content__Nav {
		display: flex;
		flex-direction: row;
		&.theme__invert {
			@media(max-width: #{$width--wide}) {
				background-color: mix($color--layout--invert, $color--background--header--invert, 50%);
			}
		}
	}
	@include in-Item__Nav() {
		flex: 0;
		&.container__logo {
			margin-right: 1.5rem;
			@media(max-width: #{$width--wide}) {
				margin-right: 0;
			}
		}
		&.theme__invert {
			svg {
				fill: $color--header--invert;
			}
			a {
				color: $color--header--invert;
				&.selected {
					box-shadow: 0 2px 0 $color--a--mid--invert;
				}
			}
		}
		svg {
			height: 40px;
			width: 40px;
			fill: $color--header;
		}
	}
	.Content__Nav {
		height: auto;
		z-index: 1;
		@media(max-width: #{$width--wide}) {
			width: 10rem;
			position: fixed;
			top: 0;
			height: 100vh;
			background-color: mix($color--layout, $color--background--header, 50%);
		}
	}
</style>
