"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
exports.id = "vendor-chunks/@payloadcms+live-preview@3.60.0";
exports.ids = ["vendor-chunks/@payloadcms+live-preview@3.60.0"];
exports.modules = {

/***/ "(ssr)/./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/isDocumentEvent.js":
/*!**************************************************************************************************************************!*\
  !*** ./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/isDocumentEvent.js ***!
  \**************************************************************************************************************************/
/***/ ((__unused_webpack___webpack_module__, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   isDocumentEvent: () => (/* binding */ isDocumentEvent)\n/* harmony export */ });\nconst isDocumentEvent = (event, serverURL)=>event.origin === serverURL && event.data && typeof event.data === 'object' && event.data.type === 'payload-document-event';\n\n//# sourceMappingURL=isDocumentEvent.js.map//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKHNzcikvLi9ub2RlX21vZHVsZXMvLnBucG0vQHBheWxvYWRjbXMrbGl2ZS1wcmV2aWV3QDMuNjAuMC9ub2RlX21vZHVsZXMvQHBheWxvYWRjbXMvbGl2ZS1wcmV2aWV3L2Rpc3QvaXNEb2N1bWVudEV2ZW50LmpzIiwibWFwcGluZ3MiOiI7Ozs7QUFBTzs7QUFFUCIsInNvdXJjZXMiOlsiL2hvbWUvbm9kZS9hcHAvbm9kZV9tb2R1bGVzLy5wbnBtL0BwYXlsb2FkY21zK2xpdmUtcHJldmlld0AzLjYwLjAvbm9kZV9tb2R1bGVzL0BwYXlsb2FkY21zL2xpdmUtcHJldmlldy9kaXN0L2lzRG9jdW1lbnRFdmVudC5qcyJdLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY29uc3QgaXNEb2N1bWVudEV2ZW50ID0gKGV2ZW50LCBzZXJ2ZXJVUkwpPT5ldmVudC5vcmlnaW4gPT09IHNlcnZlclVSTCAmJiBldmVudC5kYXRhICYmIHR5cGVvZiBldmVudC5kYXRhID09PSAnb2JqZWN0JyAmJiBldmVudC5kYXRhLnR5cGUgPT09ICdwYXlsb2FkLWRvY3VtZW50LWV2ZW50JztcblxuLy8jIHNvdXJjZU1hcHBpbmdVUkw9aXNEb2N1bWVudEV2ZW50LmpzLm1hcCJdLCJuYW1lcyI6W10sImlnbm9yZUxpc3QiOlswXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///(ssr)/./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/isDocumentEvent.js\n");

/***/ }),

/***/ "(ssr)/./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/ready.js":
/*!****************************************************************************************************************!*\
  !*** ./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/ready.js ***!
  \****************************************************************************************************************/
/***/ ((__unused_webpack___webpack_module__, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   ready: () => (/* binding */ ready)\n/* harmony export */ });\nconst ready = (args)=>{\n    const { serverURL } = args;\n    if (typeof window !== 'undefined') {\n        // This subscription may have been from either an iframe or a popup\n        // We need to report 'ready' to the parent window, whichever it may be\n        // i.e. `window?.opener` for popups, `window?.parent` for iframes\n        const windowToPostTo = window?.opener || window?.parent;\n        windowToPostTo?.postMessage({\n            type: 'payload-live-preview',\n            ready: true\n        }, serverURL);\n    }\n};\n\n//# sourceMappingURL=ready.js.map//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKHNzcikvLi9ub2RlX21vZHVsZXMvLnBucG0vQHBheWxvYWRjbXMrbGl2ZS1wcmV2aWV3QDMuNjAuMC9ub2RlX21vZHVsZXMvQHBheWxvYWRjbXMvbGl2ZS1wcmV2aWV3L2Rpc3QvcmVhZHkuanMiLCJtYXBwaW5ncyI6Ijs7OztBQUFPO0FBQ1AsWUFBWSxZQUFZO0FBQ3hCO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQSxTQUFTO0FBQ1Q7QUFDQTs7QUFFQSIsInNvdXJjZXMiOlsiL2hvbWUvbm9kZS9hcHAvbm9kZV9tb2R1bGVzLy5wbnBtL0BwYXlsb2FkY21zK2xpdmUtcHJldmlld0AzLjYwLjAvbm9kZV9tb2R1bGVzL0BwYXlsb2FkY21zL2xpdmUtcHJldmlldy9kaXN0L3JlYWR5LmpzIl0sInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjb25zdCByZWFkeSA9IChhcmdzKT0+e1xuICAgIGNvbnN0IHsgc2VydmVyVVJMIH0gPSBhcmdzO1xuICAgIGlmICh0eXBlb2Ygd2luZG93ICE9PSAndW5kZWZpbmVkJykge1xuICAgICAgICAvLyBUaGlzIHN1YnNjcmlwdGlvbiBtYXkgaGF2ZSBiZWVuIGZyb20gZWl0aGVyIGFuIGlmcmFtZSBvciBhIHBvcHVwXG4gICAgICAgIC8vIFdlIG5lZWQgdG8gcmVwb3J0ICdyZWFkeScgdG8gdGhlIHBhcmVudCB3aW5kb3csIHdoaWNoZXZlciBpdCBtYXkgYmVcbiAgICAgICAgLy8gaS5lLiBgd2luZG93Py5vcGVuZXJgIGZvciBwb3B1cHMsIGB3aW5kb3c/LnBhcmVudGAgZm9yIGlmcmFtZXNcbiAgICAgICAgY29uc3Qgd2luZG93VG9Qb3N0VG8gPSB3aW5kb3c/Lm9wZW5lciB8fCB3aW5kb3c/LnBhcmVudDtcbiAgICAgICAgd2luZG93VG9Qb3N0VG8/LnBvc3RNZXNzYWdlKHtcbiAgICAgICAgICAgIHR5cGU6ICdwYXlsb2FkLWxpdmUtcHJldmlldycsXG4gICAgICAgICAgICByZWFkeTogdHJ1ZVxuICAgICAgICB9LCBzZXJ2ZXJVUkwpO1xuICAgIH1cbn07XG5cbi8vIyBzb3VyY2VNYXBwaW5nVVJMPXJlYWR5LmpzLm1hcCJdLCJuYW1lcyI6W10sImlnbm9yZUxpc3QiOlswXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///(ssr)/./node_modules/.pnpm/@payloadcms+live-preview@3.60.0/node_modules/@payloadcms/live-preview/dist/ready.js\n");

/***/ })

};
;