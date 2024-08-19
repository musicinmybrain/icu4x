#ifndef PropertyValueNameToEnumMapper_H
#define PropertyValueNameToEnumMapper_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "diplomat_runtime.h"

#include "DataError.d.h"
#include "DataProvider.d.h"

#include "PropertyValueNameToEnumMapper.d.h"






int16_t icu4x_PropertyValueNameToEnumMapper_get_strict_mv1(const PropertyValueNameToEnumMapper* self, DiplomatStringView name);

int16_t icu4x_PropertyValueNameToEnumMapper_get_loose_mv1(const PropertyValueNameToEnumMapper* self, DiplomatStringView name);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_general_category_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_general_category_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_general_category_mv1_result icu4x_PropertyValueNameToEnumMapper_load_general_category_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_hangul_syllable_type_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_hangul_syllable_type_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_hangul_syllable_type_mv1_result icu4x_PropertyValueNameToEnumMapper_load_hangul_syllable_type_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_east_asian_width_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_east_asian_width_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_east_asian_width_mv1_result icu4x_PropertyValueNameToEnumMapper_load_east_asian_width_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_bidi_class_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_bidi_class_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_bidi_class_mv1_result icu4x_PropertyValueNameToEnumMapper_load_bidi_class_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_indic_syllabic_category_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_indic_syllabic_category_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_indic_syllabic_category_mv1_result icu4x_PropertyValueNameToEnumMapper_load_indic_syllabic_category_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_line_break_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_line_break_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_line_break_mv1_result icu4x_PropertyValueNameToEnumMapper_load_line_break_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_grapheme_cluster_break_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_grapheme_cluster_break_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_grapheme_cluster_break_mv1_result icu4x_PropertyValueNameToEnumMapper_load_grapheme_cluster_break_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_word_break_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_word_break_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_word_break_mv1_result icu4x_PropertyValueNameToEnumMapper_load_word_break_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_sentence_break_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_sentence_break_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_sentence_break_mv1_result icu4x_PropertyValueNameToEnumMapper_load_sentence_break_mv1(const DataProvider* provider);

typedef struct icu4x_PropertyValueNameToEnumMapper_load_script_mv1_result {union {PropertyValueNameToEnumMapper* ok; DataError err;}; bool is_ok;} icu4x_PropertyValueNameToEnumMapper_load_script_mv1_result;
icu4x_PropertyValueNameToEnumMapper_load_script_mv1_result icu4x_PropertyValueNameToEnumMapper_load_script_mv1(const DataProvider* provider);


void icu4x_PropertyValueNameToEnumMapper_destroy_mv1(PropertyValueNameToEnumMapper* self);





#endif // PropertyValueNameToEnumMapper_H
