import { has__dom } from '@ctx-core/dom';
import hljs from 'highlight.js/lib/core';
import highlight_js from 'highlight.js/lib/languages/javascript';
import highlight_json from 'highlight.js/lib/languages/json';
import highlight_shell from 'highlight.js/lib/languages/shell';
import highlight_typescript from 'highlight.js/lib/languages/typescript';
hljs.registerLanguage('javascript', highlight_js);
hljs.registerLanguage('js', highlight_js);
hljs.registerLanguage('json', highlight_json);
hljs.registerLanguage('shell', highlight_shell);
hljs.registerLanguage('typescript', highlight_typescript);
if (has__dom) {
    window.hljs = hljs;
}
export { hljs };
