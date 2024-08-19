// generated by diplomat-tool
import type { CustomTimeZone } from "./CustomTimeZone"
import type { DataProvider } from "./DataProvider"
import type { Error } from "./Error"
import type { IsoTimeZoneOptions } from "./IsoTimeZoneOptions"
import type { Locale } from "./Locale"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An ICU4X TimeZoneFormatter object capable of formatting an [`CustomTimeZone`] type (and others) as a string
*
*See the [Rust documentation for `TimeZoneFormatter`](https://docs.rs/icu/latest/icu/datetime/time_zone/struct.TimeZoneFormatter.html) for more information.
*/
export class TimeZoneFormatter {
    

    get ffiValue(): pointer;

    static createWithLocalizedGmtFallback(provider: DataProvider, locale: Locale): TimeZoneFormatter;

    static createWithIso8601Fallback(provider: DataProvider, locale: Locale, options: IsoTimeZoneOptions): TimeZoneFormatter;

    loadGenericNonLocationLong(provider: DataProvider): void;

    loadGenericNonLocationShort(provider: DataProvider): void;

    loadSpecificNonLocationLong(provider: DataProvider): void;

    loadSpecificNonLocationShort(provider: DataProvider): void;

    loadGenericLocationFormat(provider: DataProvider): void;

    includeLocalizedGmtFormat(): void;

    loadIso8601Format(options: IsoTimeZoneOptions): void;

    formatCustomTimeZone(value: CustomTimeZone): string;

    formatCustomTimeZoneNoFallback(value: CustomTimeZone): string;
}