import { CustomTimeZone } from "icu4x"
import { DataProvider } from "icu4x"
import { GregorianZonedDateTimeFormatter } from "icu4x"
import { IsoDateTime } from "icu4x"
import { Locale } from "icu4x"
export function formatIsoDatetimeWithCustomTimeZone() {
    var terminusArgs = arguments;
    return (function (...args) { return args[0].formatIsoDatetimeWithCustomTimeZone(...args.slice(1)) }).apply(
        null,
        [
            GregorianZonedDateTimeFormatter.createWithLengths.apply(
                null,
                [
                    DataProvider.compiled.apply(
                        null,
                        [
                        ]
                    ),
                    Locale.fromString.apply(
                        null,
                        [
                            terminusArgs[0]
                        ]
                    ),
                    terminusArgs[1],
                    terminusArgs[2]
                ]
            ),
            IsoDateTime.create.apply(
                null,
                [
                    terminusArgs[3],
                    terminusArgs[4],
                    terminusArgs[5],
                    terminusArgs[6],
                    terminusArgs[7],
                    terminusArgs[8],
                    terminusArgs[9]
                ]
            ),
            CustomTimeZone.fromString.apply(
                null,
                [
                    terminusArgs[10]
                ]
            )
        ]
    );
}
