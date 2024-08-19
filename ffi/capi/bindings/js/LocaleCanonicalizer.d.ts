// generated by diplomat-tool
import type { DataProvider } from "./DataProvider"
import type { Error } from "./Error"
import type { Locale } from "./Locale"
import type { TransformResult } from "./TransformResult"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** A locale canonicalizer.
*
*See the [Rust documentation for `LocaleCanonicalizer`](https://docs.rs/icu/latest/icu/locale/struct.LocaleCanonicalizer.html) for more information.
*/
export class LocaleCanonicalizer {
    

    get ffiValue(): pointer;

    static create(provider: DataProvider): LocaleCanonicalizer;

    static createExtended(provider: DataProvider): LocaleCanonicalizer;

    canonicalize(locale: Locale): TransformResult;
}