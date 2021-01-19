<script>
import { join } from 'path'
import { source_edit_url_b } from '@btakita/content'
export let href = ''
</script>

<a
	href="{join($__url__edit__source, href)}"
	target="_blank"
><slot>edit</slot></a>
