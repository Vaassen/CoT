for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4
echo "					if = { limit = { has_ruler_flag = wyvernheart_${school} is_ruler_${school}_level_3 = no }" >> temp.txt
echo "						magic_school_level_up = { type = ruler school = ${school} }" >> temp.txt
echo "					}" >> temp.txt
done

for project in magical_fortress summon_extraplanars orb_of_omniscience enchant_legendary_artifact battlemage_academy theatre_of_simulacra lichdom homunculus unique_project_1 unique_project_2 unique_project_3 unique_project_4 unique_project_5 unique_project_6 unique_project_7 unique_project_8
do
echo ""
done

#Delete after Magic Rework is done!