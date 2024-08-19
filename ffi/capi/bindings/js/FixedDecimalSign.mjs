// generated by diplomat-tool
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";

// Base enumerator definition
/** The sign of a FixedDecimal, as shown in formatting.
*
*See the [Rust documentation for `Sign`](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.Sign.html) for more information.
*/
export class FixedDecimalSign {
    #value = undefined;

    static values = new Map([
        ["None", 0],
        ["Negative", 1],
        ["Positive", 2]
    ]);

    constructor(value) {
        if (value instanceof FixedDecimalSign) {
            this.#value = value.value;
            return;
        }

        if (FixedDecimalSign.values.has(value)) {
            this.#value = value;
            return;
        }

        throw TypeError(value + " is not a FixedDecimalSign and does not correspond to any of its enumerator values.");
    }

    get value() {
        return this.#value;
    }

    get ffiValue() {
        return FixedDecimalSign.values.get(this.#value);
    }

    static None = new FixedDecimalSign("None");
    static Negative = new FixedDecimalSign("Negative");
    static Positive = new FixedDecimalSign("Positive");
}