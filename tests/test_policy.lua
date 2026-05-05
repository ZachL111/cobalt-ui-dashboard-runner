package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 85, capacity = 90, latency = 10, risk = 10, weight = 11 }
assert(policy.score(signal_case_1) == 225)
assert(policy.classify(signal_case_1) == "accept")
local signal_case_2 = { demand = 59, capacity = 79, latency = 25, risk = 6, weight = 13 }
assert(policy.score(signal_case_2) == 151)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 83, capacity = 80, latency = 11, risk = 18, weight = 5 }
assert(policy.score(signal_case_3) == 130)
assert(policy.classify(signal_case_3) == "review")
