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
alias MonstersManual.Challenge
alias MonstersManual.Alignment
alias MonstersManual.Size
alias MonstersManual.Speed
alias MonstersManual.Action

defmodule Seeder do
  def load_data(items) do
    Enum.each(items, fn(x) -> Repo.insert! x end)
  end
  def load_monster_with_asoc(monster, sp) do
    Repo.transaction fn ->
      m = Repo.insert!(monster)
      s = Ecto.build_assoc(m, :speeds, sp)
      Repo.insert!(s)
    end
  end
end


#monsters = [
#%Monster{name: "Aarakocra", type: "humanoid", average_hit_points: 13, hit_point_dice: "3d8", size: "medium",alignment: 4, ac: 12, xp: 50,str: 17,str_modifier: "+3",dex: 11,dex_modifier: "+0",con: 13,con_modifier: "+1",int: 1,int_modifier: "-5",wis: 13,wis_modifier: "+1",cha: 6,cha_modifier: "-2"},
#%Monster{name: "Aboleth", type: "aberation", average_hit_points: 135, hit_point_dice: "18d10 + 36", size: "large",alignment: 3, ac: 17, xp: 5900,str: 21,str_modifier: "+5",dex: 9,dex_modifier: "-1",con: 15,con_modifier: "+2",int: 18,int_modifier: "+4",wis: 15,wis_modifier: "+2",cha: 18,cha_modifier: "+4"},
#%Monster{name: "Deva", type: "celestial", average_hit_points: 136, hit_point_dice: "16d8 + 64", size: "medium",alignment: 1, ac: 17, xp: 5900,str: 18,str_modifier: "+4",dex: 18,dex_modifier: "+4",con: 18,con_modifier: "+4",int: 17,int_modifier: "+3",wis: 20,wis_modifier: "+5",cha: 20,cha_modifier: "+5"}
#]

monster = %Monster{name: "Aarakocra", type: "humanoid", ac: 12, str: 17,str_modifier: "+3",dex: 11,dex_modifier: "+0",con: 13,con_modifier: "+1",int: 1,int_modifier: "-5",wis: 13,wis_modifier: "+1",cha: 6,cha_modifier: "-2",
        challenge_id: 3, alignment_id: 4}
speed = %Speed{burrow: "some content", climb: "some content", fly: "some content", swim: "some content", walking: "some content"}


# size: 1,alignment: 4,challenge: 3,actions: 1, speeds: 1,

challenges = [
%Challenge{rating: 0.0, experience: 10, proficiency: "+2"},
%Challenge{rating: 0.125, experience: 25, proficiency: "+2"},
%Challenge{rating: 0.25, experience: 50, proficiency: "+2"},
%Challenge{rating: 0.50, experience: 100, proficiency: "+2"},
%Challenge{rating: 1.0, experience: 200, proficiency: "+2"},
%Challenge{rating: 2.0, experience: 450, proficiency: "+2"},
%Challenge{rating: 3.0, experience: 700, proficiency: "+2"},
%Challenge{rating: 4.0, experience: 1100, proficiency: "+2"},
%Challenge{rating: 5.0, experience: 1800, proficiency: "+3"},
%Challenge{rating: 6.0, experience: 2300, proficiency: "+3"},
%Challenge{rating: 7.0, experience: 2900, proficiency: "+3"},
%Challenge{rating: 8.0, experience: 3900, proficiency: "+3"},
%Challenge{rating: 9.0, experience: 5000, proficiency: "+4"},
%Challenge{rating: 10.0, experience: 5900, proficiency: "+4"},
%Challenge{rating: 11.0, experience: 7200, proficiency: "+4"},
%Challenge{rating: 12.0, experience: 8400, proficiency: "+4"},
%Challenge{rating: 13.0, experience: 10000, proficiency: "+5"},
%Challenge{rating: 14.0, experience: 11500, proficiency: "+5"},
%Challenge{rating: 15.0, experience: 13000, proficiency: "+5"},
%Challenge{rating: 16.0, experience: 15000, proficiency: "+5"},
%Challenge{rating: 17.0, experience: 18000, proficiency: "+6"},
%Challenge{rating: 18.0, experience: 20000, proficiency: "+6"},
%Challenge{rating: 19.0, experience: 22000, proficiency: "+6"},
%Challenge{rating: 20.0, experience: 25000, proficiency: "+6"},
%Challenge{rating: 21.0, experience: 33000, proficiency: "+7"},
%Challenge{rating: 22.0, experience: 41000, proficiency: "+7"},
%Challenge{rating: 23.0, experience: 50000, proficiency: "+7"},
%Challenge{rating: 24.0, experience: 62000, proficiency: "+7"},
%Challenge{rating: 25.0, experience: 75000, proficiency: "+8"},
%Challenge{rating: 26.0, experience: 90000, proficiency: "+8"},
%Challenge{rating: 27.0, experience: 105000, proficiency: "+8"},
%Challenge{rating: 28.0, experience: 120000, proficiency: "+8"},
%Challenge{rating: 29.0, experience: 135000, proficiency: "+9"},
%Challenge{rating: 30.0, experience: 155000, proficiency: "+9"}
]

alignments = [
%Alignment{name: "Lawful Good"},
%Alignment{name: "Lawful Neutral"},
%Alignment{name: "Lawful Evil"},
%Alignment{name: "Neutral Good"},
%Alignment{name: "Neutral"},
%Alignment{name: "Neutral Evil"},
%Alignment{name: "Chaotic Good"},
%Alignment{name: "Chaotic Neutral"},
%Alignment{name: "Chaotic Evil"}
]

sizes = [
%Size{average_hit_point_per_die: 13, hit_point_dice: "3d8", size: "medium", space: "5 by 5 ft."}
]

#speeds = [
#%Speed{burrow: "some content", climb: "some content", fly: "some content", swim: "some content", walking: "some content", monster: 1}
#]

actions = [
%Action{ammunition: "some content", legendary_action: "some content", legendary_lair_action: "some content", limited_usage: "some content", multiattack: "some content", name: "some content", reaction: "some content", regional_effect: "some content"}
]

#Seeder.load_data(monsters)
Seeder.load_data(challenges)
Seeder.load_data(alignments)
Seeder.load_data(sizes)
Seeder.load_data(actions)
Seeder.load_monster_with_asoc(monster, speed)
#Seeder.load_data(speeds)
