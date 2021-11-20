# frozen_string_literal: true
# typed: true
# compiled: true
# run_filecheck: OPT

def test_symbol_to_s
  p(:hello.to_s)
  p(:+.to_s)
  p(:Blonk.to_s)
  p(:"::!!?? zoiks, scoob".to_s)
end

# OPT-LABEL: define internal i64 @"func_Object#13test_int_to_f"
# OPT: tail call i64 @sorbet_int_to_f(
# OPT: tail call i64 @sorbet_int_to_f(
# OPT: tail call i64 @sorbet_int_to_f(
# OPT: tail call i64 @sorbet_int_to_f(
# OPT: tail call i64 @sorbet_int_to_f(
# OPT: tail call i64 @sorbet_int_to_f(
# OPT{LITERAL}: }

test_symbol_to_s
