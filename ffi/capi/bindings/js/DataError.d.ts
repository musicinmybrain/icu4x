// generated by diplomat-tool
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";

// Base enumerator definition
/** Additional information: [1](https://docs.rs/icu/latest/icu/provider/struct.DataError.html), [2](https://docs.rs/icu/latest/icu/provider/enum.DataErrorKind.html)
*/
export class DataError {
    constructor(value : DataError | string);

    get value() : string;

    get ffiValue() : number;

    static Unknown : DataError;
    static MarkerNotFound : DataError;
    static IdentifierNotFound : DataError;
    static InvalidRequest : DataError;
    static InconsistentData : DataError;
    static Downcast : DataError;
    static Deserialize : DataError;
    static Custom : DataError;
    static Io : DataError;
}