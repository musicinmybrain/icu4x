// generated by diplomat-tool
import type { DataProvider } from "./DataProvider"
import type { DateLength } from "./DateLength"
import type { Error } from "./Error"
import type { IsoDate } from "./IsoDate"
import type { IsoDateTime } from "./IsoDateTime"
import type { Locale } from "./Locale"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An ICU4X TypedDateFormatter object capable of formatting a [`IsoDateTime`] as a string,
*using the Gregorian Calendar.
*
*See the [Rust documentation for `TypedDateFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.TypedDateFormatter.html) for more information.
*/
export class GregorianDateFormatter {
    

    get ffiValue(): pointer;

    static createWithLength(provider: DataProvider, locale: Locale, length: DateLength): GregorianDateFormatter;

    formatIsoDate(value: IsoDate): string;

    formatIsoDatetime(value: IsoDateTime): string;
}