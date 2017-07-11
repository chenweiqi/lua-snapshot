local snapshot = require "snapshot"

local S1 = snapshot()

local tmp = {}

local S2, T2 = snapshot()

for k,v in pairs(S2) do
	if S1[k] == nil then
		print(k,v)
	end
end

print(T2)
table.sort(T2, function(t1, t2) return t1.num> t2.num end)
for k,v in pairs(T2) do
	print(k,v.num, v.parent, v.desc)
end
