# Task 2 · Data representation

Use int for zero-based floor and slot indices, String for registrations (letters and leading zeroes matter), LocalDateTime for campus wall-clock entry and exit, long for elapsed minutes and long for integral rupee charges. This model assumes whole-rupee rates. Use minor currency units if fractional rates are introduced. Read complete lines with Scanner, parse integers explicitly and reject invalid dates and out-of-range coordinates. The executable fixture passes typed inputs directly so it is reproducible.

An int computation 61 / 60 is 1. A cast applied afterward only produces 1.0. A Rs 30 rate would therefore bill Rs 30 when Rs 60 is due. Use whole minutes divided by 60 plus one when the remainder is nonzero. At 60 minutes no extra hour is added.

Each floor has its own array. Given valid coordinates, a jagged array and ArrayList of arrays both look up a slot in O(1) and store O(N+F) entries and row references for N slots on F floors. Reserve a flat array of N slots and precompute offsets with offset[0] = 0 and offset[f+1] = offset[f] + count[f]. Index by offset[f] + slot after validating the local row bound. This also gives O(1) access and O(N+F) space. Multiplying by a uniform stride works for equal rows or padded rows, with O(F × maximum row length) space for padding. All use O(1) extra space per lookup.
