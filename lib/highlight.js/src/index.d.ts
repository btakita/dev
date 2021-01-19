import hljs from 'highlight.js/lib/core';
export { hljs };
declare global {
    interface Window {
        hljs: typeof hljs;
    }
}
