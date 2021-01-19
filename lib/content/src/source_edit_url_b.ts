import { _b } from '@ctx-core/object'
import { writable } from '@ctx-core/store'
export const source_edit_url_b = _b('source_edit_url', () => {
	const source_edit_url = writable('https://github.com/btakita/dev/edit/master/packages/web/src/routes')
	return source_edit_url
})
