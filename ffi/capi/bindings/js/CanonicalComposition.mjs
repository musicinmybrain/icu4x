// generated by diplomat-tool
import { DataError } from "./DataError.mjs"
import { DataProvider } from "./DataProvider.mjs"
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** The raw canonical composition operation.
*
*Callers should generally use ComposingNormalizer unless they specifically need raw composition operations
*
*See the [Rust documentation for `CanonicalComposition`](https://docs.rs/icu/latest/icu/normalizer/properties/struct.CanonicalComposition.html) for more information.
*/
const CanonicalComposition_box_destroy_registry = new FinalizationRegistry((ptr) => {
    wasm.icu4x_CanonicalComposition_destroy_mv1(ptr);
});

export class CanonicalComposition {
    // Internal ptr reference:
    #ptr = null;

    // Lifetimes are only to keep dependencies alive.
    // Since JS won't garbage collect until there are no incoming edges.
    #selfEdge = [];
    
    constructor(symbol, ptr, selfEdge) {
        if (symbol !== diplomatRuntime.internalConstructor) {
            console.error("CanonicalComposition is an Opaque type. You cannot call its constructor.");
            return;
        }
        
        this.#ptr = ptr;
        this.#selfEdge = selfEdge;
        
        // Are we being borrowed? If not, we can register.
        if (this.#selfEdge.length === 0) {
            CanonicalComposition_box_destroy_registry.register(this, this.#ptr);
        }
    }

    get ffiValue() {
        return this.#ptr;
    }

    static create(provider) {
        
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        const result = wasm.icu4x_CanonicalComposition_create_mv1(diplomatReceive.buffer, provider.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                const cause = DataError[Array.from(DataError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomatReceive.buffer)]];
                throw new globalThis.Error('DataError: ' + cause.value, { cause });
            }
            return new CanonicalComposition(diplomatRuntime.internalConstructor, diplomatRuntime.ptrRead(wasm, diplomatReceive.buffer), []);
        }
        
        finally {
            diplomatReceive.free();
        }
    }

    compose(starter, second) {
        const result = wasm.icu4x_CanonicalComposition_compose_mv1(this.ffiValue, starter, second);
    
        try {
            return result;
        }
        
        finally {}
    }
}