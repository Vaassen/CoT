for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4


echo "country_event = { #${school} handler" >> temp.txt
echo "	id = magic_system.301" >> temp.txt
echo "	title = magic_system.301.t" >> temp.txt
echo "	desc = magic_system.301.desc" >> temp.txt
echo "	picture = MAGES_ESTATE_eventPicture" >> temp.txt
echo "" >> temp.txt
echo "	hidden = yes" >> temp.txt
echo "	is_triggered_only = yes" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_0_0_spell" >> temp.txt
echo "		ai_chance = { factor = 1 }" >> temp.txt
echo "	}" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_1_0_spell" >> temp.txt
echo "		ai_chance = { factor = 1 }" >> temp.txt
echo "		trigger = { is_overall_${school}_level_1_minimum = yes }" >> temp.txt
echo "	}" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_1_1_spell" >> temp.txt
echo "		ai_chance = { factor = 1 }" >> temp.txt
echo "		trigger = { is_overall_${school}_level_1_minimum = yes }" >> temp.txt
echo "	}" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_2_0_spell" >> temp.txt
echo "		ai_chance = { factor = 2 }" >> temp.txt
echo "		trigger = { is_overall_${school}_level_2_minimum = yes }" >> temp.txt
echo "	}" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_2_1_spell" >> temp.txt
echo "		ai_chance = { factor = 2 }" >> temp.txt
echo "		trigger = { is_overall_${school}_level_2_minimum = yes }" >> temp.txt
echo "	}" >> temp.txt
echo "" >> temp.txt
echo "	option = {" >> temp.txt
echo "		name = ${school}_3_0_spell" >> temp.txt
echo "		ai_chance = { factor = 4 }" >> temp.txt
echo "		trigger = { is_overall_${school}_level_3 = yes }" >> temp.txt
echo "	}" >> temp.txt
echo "}" >> temp.txt
done

for project in magical_fortress summon_extraplanars orb_of_omniscience enchant_legendary_artifact battlemage_academy theatre_of_simulacra lichdom homunculus unique_project_1 unique_project_2 unique_project_3 unique_project_4 unique_project_5 unique_project_6 unique_project_7 unique_project_8
do
x=1
done

#Delete after Magic Rework is done!