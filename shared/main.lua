local qbShared = {}
qbShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
qbShared.Locations = require 'data.locations'
qbShared.Vehicles = require 'data.vehicles'
qbShared.Weapons = require 'data.weapons'

---@type table<number, Vehicle>
qbShared.VehicleHashes = {}

for _, v in pairs(qbShared.Vehicles) do
	qbShared.VehicleHashes[v.hash] = v
end

return qbShared
