// generated by diplomat-tool
import { Locale } from "./Locale.mjs"
import { LocaleFallbackIterator } from "./LocaleFallbackIterator.mjs"
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** An object that runs the ICU4X locale fallback algorithm with specific configurations.
*
*See the [Rust documentation for `LocaleFallbacker`](https://docs.rs/icu/latest/icu/locale/fallback/struct.LocaleFallbacker.html) for more information.
*
*See the [Rust documentation for `LocaleFallbackerWithConfig`](https://docs.rs/icu/latest/icu/locale/fallback/struct.LocaleFallbackerWithConfig.html) for more information.
*/
const LocaleFallbackerWithConfig_box_destroy_registry = new FinalizationRegistry((ptr) => {
    wasm.icu4x_LocaleFallbackerWithConfig_destroy_mv1(ptr);
});

export class LocaleFallbackerWithConfig {
    // Internal ptr reference:
    #ptr = null;

    // Lifetimes are only to keep dependencies alive.
    // Since JS won't garbage collect until there are no incoming edges.
    #selfEdge = [];
    #aEdge = [];
    
    constructor(symbol, ptr, selfEdge, aEdge) {
        if (symbol !== diplomatRuntime.internalConstructor) {
            console.error("LocaleFallbackerWithConfig is an Opaque type. You cannot call its constructor.");
            return;
        }
        
        
        this.#aEdge = aEdge;
        
        this.#ptr = ptr;
        this.#selfEdge = selfEdge;
        
        // Are we being borrowed? If not, we can register.
        if (this.#selfEdge.length === 0) {
            LocaleFallbackerWithConfig_box_destroy_registry.register(this, this.#ptr);
        }
    }

    get ffiValue() {
        return this.#ptr;
    }

    fallbackForLocale(locale) {
        
        // This lifetime edge depends on lifetimes 'a, 'b
        let aEdges = [this];
        const result = wasm.icu4x_LocaleFallbackerWithConfig_fallback_for_locale_mv1(this.ffiValue, locale.ffiValue);
    
        try {
            return new LocaleFallbackIterator(diplomatRuntime.internalConstructor, result, [], aEdges);
        }
        
        finally {}
    }
}