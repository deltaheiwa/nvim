local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('zig', {
  s('aoc', {
    t { 'const std = @import("std");', '', '', 'pub fn part1(input: []const u8) [:0]const u8 {', '', '\t' },
    i(1, '_'),
    t { ' = input;', '', '\treturn "";', '', '}', '', 'pub fn part2(input: []u8) !i32 {', '', '\t' },
    i(2, '_'),
    t { ' = input;', '', '\treturn error.Overflow;', '', '}' },
  }),
})
