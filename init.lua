--letters
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

for i = 1, #chars do
    local c = chars:sub(i, i)

    minetest.register_node("neon:" .. c, {
        description = "Neon light " .. c,
        tiles = {"neon_" .. c .. ".png"},
        drawtype = "signlike",
        paramtype = "light",
        paramtype2 = "wallmounted",
        sunlight_propagates = true,
        is_ground_content = true,
        groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
        inventory_image = "neon_" .. c .. ".png",
        light_source = 10,
        selection_box = {
            type = "wallmounted",
        },
    })
end
-- CRAFTING RECIPES HERE --
-- based on Braille --
	minetest.register_craftitem("neon:tube", {
		description = "Neontube",
		inventory_image = "neon_tube.png",
	})
	-- neon tube
	minetest.register_craft({
		output = '"neon:tube" 20',
		recipe = {
			{'', 'default:mese_crystal_fragment', 'default:steel_ingot'},
			{'default:mese_crystal_fragment', 'default:glass', 'default:mese_crystal_fragment'},
			{'default:steel_ingot', 'default:mese_crystal_fragment', ''},
		}
	})
	-- A
	minetest.register_craft({
		output = '"neon:A" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', '', ''},
			{'', '', ''},
		}
	})
	-- B
	minetest.register_craft({
		output = '"neon:B" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
			{'', '', ''},
		}
	})
	-- C
	minetest.register_craft({
		output = '"neon:C" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
			{'', '', ''},
		}
	})
	-- D
	minetest.register_craft({
		output = '"neon:D" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', 'neon:tube', ''},
			{'', '', ''},
		}
	})
	-- E
	minetest.register_craft({
		output = '"neon:E" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', 'neon:tube', ''},
			{'', '', ''},
		}
	})
	-- F
	minetest.register_craft({
		output = '"neon:F" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'', '', ''},
		}
	})
	-- G
	minetest.register_craft({
		output = '"neon:G" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
		}
	})
	-- H
	minetest.register_craft({
		output = '"neon:H" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
		}
	})
	-- I
	minetest.register_craft({
		output = '"neon:I" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'', '', ''},
		}
	})
	-- J
	minetest.register_craft({
		output = '"neon:J" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
		}
	})
	-- K
	minetest.register_craft({
		output = '"neon:K" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', '', ''},
			{'neon:tube', '', ''},
		}
	})
	-- L
	minetest.register_craft({
		output = '"neon:L" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
		}
	})
	-- M
	minetest.register_craft({
		output = '"neon:M" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
			{'neon:tube', '', ''},
		}
	})
	-- N
	minetest.register_craft({
		output = '"neon:N" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', 'neon:tube', ''},
			{'neon:tube', '', ''},
		}
	})
	-- O
	minetest.register_craft({
		output = '"neon:O" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', 'neon:tube', ''},
			{'neon:tube', '', ''},
		}
	})
	-- P
	minetest.register_craft({
		output = '"neon:P" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
		}
	})
	-- Q
	minetest.register_craft({
		output = '"neon:Q" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
		}
	})
	-- R
	minetest.register_craft({
		output = '"neon:R" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
		}
	})
	-- S
	minetest.register_craft({
		output = '"neon:S" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
		}
	})
	-- T
	minetest.register_craft({
		output = '"neon:T" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
		}
	})
	-- U
	minetest.register_craft({
		output = '"neon:U" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', '', ''},
			{'neon:tube', 'neon:tube', ''},
		}
	})
	-- V
	minetest.register_craft({
		output = '"neon:V" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
			{'neon:tube', 'neon:tube', ''},
		}
	})
	-- W
	minetest.register_craft({
		output = '"neon:W" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', 'neon:tube', ''},
		}
	})
	-- X
	minetest.register_craft({
		output = '"neon:X" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
			{'neon:tube', 'neon:tube', ''},
		}
	})
	-- Y
	minetest.register_craft({
		output = '"neon:Y" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
		}
	})
	-- Z
	minetest.register_craft({
		output = '"neon:Z" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
		}
	})
	-- 1
	minetest.register_craft({
		output = '"neon:1" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', '', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 2
	minetest.register_craft({
		output = '"neon:2" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', '', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 3
	minetest.register_craft({
		output = '"neon:3" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', '', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 4
	minetest.register_craft({
		output = '"neon:4" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'', 'neon:tube', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 5
	minetest.register_craft({
		output = '"neon:5" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'', 'neon:tube', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 6
	minetest.register_craft({
		output = '"neon:6" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 7
	minetest.register_craft({
		output = '"neon:7" 1',
		recipe = {
			{'neon:tube', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 8
	minetest.register_craft({
		output = '"neon:8" 1',
		recipe = {
			{'neon:tube', '', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 9
	minetest.register_craft({
		output = '"neon:9" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', '', ''},
			{'', '', 'default:glass'},
		}
	})
	-- 0
	minetest.register_craft({
		output = '"neon:0" 1',
		recipe = {
			{'', 'neon:tube', ''},
			{'neon:tube', 'neon:tube', ''},
			{'', '', 'default:glass'},
		}
	})
