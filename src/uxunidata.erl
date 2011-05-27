-module(uxunidata).

-export([char_to_upper/1, char_to_lower/1, is_upper/1, is_lower/1,
        char_comment/1, char_type/1, ccc/1, freq_dict/1, 
        nfc_qc/1, nfd_qc/1, nfkc_qc/1, nfkd_qc/1, 
        is_comp_excl/1, is_compat/1, decomp/1, comp/2,
        ducet_r/1, char_block/1]).

-include("string/char_to_upper.hrl").
%char_to_upper(C) -> C.
-include("string/char_to_lower.hrl").
%char_to_lower(C) -> C.

-include("string/is_upper.hrl").
%% @doc Returns true, if is C is uppercase. 
-spec is_upper(C::char()) -> boolean().
%is_upper(_) -> false.
-include("string/is_lower.hrl").
%% @doc Returns true, if is C is lowercase.
-spec is_lower(C::char()) -> boolean().
%is_lower(_) -> false.

-include("string/char_comment.hrl").
-include("string/char_type.hrl").
%% @doc Returns a char type.
-spec char_type(C::char()) -> atom().
%char_type(_) -> other.

-include("string/freq_dict.hrl").
-include("string/ccc.hrl").

%% From http://www.unicode.org/Public/UNIDATA/DerivedNormalizationProps.txt
-include("string/nfc_qc.hrl").
-include("string/nfd_qc.hrl").
-include("string/nfkc_qc.hrl").
-include("string/nfkd_qc.hrl").

%% From http://www.unicode.org/Public/UNIDATA/CompositionExclusions.txt
-include("string/is_comp_excl.hrl").
-include("string/is_compat.hrl").
-include("string/decomp.hrl").
-include("string/comp.hrl").

% http://unicode.org/reports/tr10/
% From http://unicode.org/Public/UCA/latest/allkeys.txt
% Generated by support/ducet_gen.escript
-include("string/ducet.hrl").

% From http://unicode.org/Public/UNIDATA/Blocks.txt
% Generated by support/blocks_gen.escript
-include("string/blocks.hrl").

%freq_dict(_) -> 0.

