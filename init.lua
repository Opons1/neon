--letters
local chars = "abcdefghijklmnopqrstuvwxyz0123456789"

-- recipes based on braille i think (hopefully i didnt mess up a pattern)
local patterns = {
    a = {{1,0,0},{0,0,0},{0,0,0}},
    b = {{1,0,0},{1,0,0},{0,0,0}},
    c = {{1,1,0},{0,0,0},{0,0,0}},
    d = {{1,1,0},{0,1,0},{0,0,0}},
    e = {{1,0,0},{0,1,0},{0,0,0}},
    f = {{1,1,0},{1,0,0},{0,0,0}},
    g = {{1,1,0},{1,1,0},{0,0,0}},
    h = {{1,0,0},{1,1,0},{0,0,0}},
    i = {{0,1,0},{1,0,0},{0,0,0}},
    j = {{0,1,0},{1,1,0},{0,0,0}},
    k = {{1,0,0},{0,0,0},{1,0,0}},
    l = {{1,0,0},{1,0,0},{1,0,0}},
    m = {{1,1,0},{0,0,0},{1,0,0}},
    n = {{1,1,0},{0,1,0},{1,0,0}},
    o = {{1,0,0},{0,1,0},{1,0,0}},
    p = {{1,1,0},{1,0,0},{1,0,0}},
    q = {{1,1,0},{1,1,0},{1,0,0}},
    r = {{1,0,0},{1,1,0},{1,0,0}},
    s = {{0,1,0},{1,0,0},{1,0,0}},
    t = {{0,1,0},{1,1,0},{1,0,0}},
    u = {{1,0,0},{0,0,0},{1,1,0}},
    v = {{1,0,0},{1,0,0},{1,1,0}},
    w = {{0,1,0},{1,1,0},{0,1,0}},
    x = {{1,1,0},{0,0,0},{1,1,0}},
    y = {{1,1,0},{0,1,0},{1,1,0}},
    z = {{1,0,0},{0,1,0},{1,1,0}},

    ["1"] = {{1,0,0},{0,0,0},{0,0,"g"}},
    ["2"] = {{1,0,0},{1,0,0},{0,0,"g"}},
    ["3"] = {{1,1,0},{0,0,0},{0,0,"g"}},
    ["4"] = {{1,1,0},{0,1,0},{0,0,"g"}},
    ["5"] = {{1,0,0},{0,1,0},{0,0,"g"}},
    ["6"] = {{1,1,0},{1,0,0},{0,0,"g"}},
    ["7"] = {{1,1,0},{1,1,0},{0,0,"g"}},
    ["8"] = {{1,0,0},{1,1,0},{0,0,"g"}},
    ["9"] = {{0,1,0},{1,0,0},{0,0,"g"}},
    ["0"] = {{0,1,0},{1,1,0},{0,0,"g"}},
}
--register node
for i = 1, #chars do
    local c = chars:sub(i, i)
    local uc = string.upper(c)

    core.register_node("neon:" .. c, {
        description = "Neon light " .. uc,
        tiles = {"neon_" .. c .. ".png"},
        drawtype = "signlike",
        paramtype = "light",
        paramtype2 = "wallmounted",
        sunlight_propagates = true,
        is_ground_content = true,
        groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
        inventory_image = "neon_" .. c .. ".png",
        light_source = 10,
        selection_box = { type = "wallmounted" },
    })
end


core.register_craftitem("neon:tube", {
    description = "Neon tube",
    inventory_image = "neon_tube.png",
})

core.register_craft({
    output = "neon:tube 20",
    recipe = {
        {"", "default:mese_crystal_fragment", "default:steel_ingot"},
        {"default:mese_crystal_fragment", "default:glass", "default:mese_crystal_fragment"},
        {"default:steel_ingot", "default:mese_crystal_fragment", ""},
    }
})

--recipes
for char, grid in pairs(patterns) do
    local recipe = {}

    for y = 1, 3 do
        recipe[y] = {}
        for x = 1, 3 do
            local v = grid[y][x]
            if v == 1 then
                recipe[y][x] = "neon:tube"
            elseif v == "g" then
                recipe[y][x] = "default:glass"
            else
                recipe[y][x] = ""
            end
        end
    end

    core.register_craft({
        output = "neon:" .. char .. " 1",
        recipe = recipe
    })
end
