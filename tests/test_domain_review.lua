package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 57, slack = 36, drag = 18, confidence = 82 }
assert(review.score(item) == 178)
assert(review.lane(item) == "ship")
