# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MonstersManual.Repo.insert!(%MonstersManual.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias MonstersManual.Repo
alias MonstersManual.Monster

monsters = [
%Monster{name: "Aarakocra", type: "humanoid", average_hit_points: 13, hit_point_dice: "3d8", size: "medium",alignment: "neutral good", ac: 12, xp: 50,str: 17,str_modifier: "+3",dex: 11,dex_modifier: "+0",con: 13,con_modifier: "+1",int: 1,int_modifier: "-5",wis: 13,wis_modifier: "+1",cha: 6,cha_modifier: "-2"},
%Monster{name: "Aboleth", type: "aberation", average_hit_points: 135, hit_point_dice: "18d10 + 36", size: "large",alignment: "lawful evil", ac: 17, xp: 5900,str: 21,str_modifier: "+5",dex: 9,dex_modifier: "-1",con: 15,con_modifier: "+2",int: 18,int_modifier: "+4",wis: 15,wis_modifier: "+2",cha: 18,cha_modifier: "+4"},
%Monster{name: "Deva", type: "celestial", average_hit_points: 136, hit_point_dice: "16d8 + 64", size: "medium",alignment: "lawful good", ac: 17, xp: 5900,str: 18,str_modifier: "+4",dex: 18,dex_modifier: "+4",con: 18,con_modifier: "+4",int: 17,int_modifier: "+3",wis: 20,wis_modifier: "+5",cha: 20,cha_modifier: "+5"}
]

Enum.each(monsters, fn(x) -> Repo.insert! x end)