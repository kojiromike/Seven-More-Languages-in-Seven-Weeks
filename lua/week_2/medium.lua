#!/usr/bin/env lua

easy = require 'easy'

setmetatable(_G, { __add = concatenate })

print_table(medals + book)
