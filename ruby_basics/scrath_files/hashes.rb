# frozen_string_literal: true


hash = { a: 1, b: 2, c: 3, d: 4 }

hash_num = {
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
}

hash_merged = hash.merge(hash_num)


puts hash_merged
