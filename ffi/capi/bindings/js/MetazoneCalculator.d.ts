// generated by diplomat-tool
import type { DataError } from "./DataError"
import type { DataProvider } from "./DataProvider"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An object capable of computing the metazone from a timezone.
*
*This can be used via `maybe_calculate_metazone()` on [`CustomTimeZone`].
*
*[`CustomTimeZone`]: crate::timezone::ffi::CustomTimeZone
*
*See the [Rust documentation for `MetazoneCalculator`](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneCalculator.html) for more information.
*/
export class MetazoneCalculator {
    

    get ffiValue(): pointer;

    static create(provider: DataProvider): MetazoneCalculator;
}