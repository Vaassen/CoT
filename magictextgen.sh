for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4
echo "defined_text = {" >> temp.txt
echo "	name = get_${school}_magic_levels_summary" >> temp.txt
echo "	text = { localisation_key = ${school}_magic_levels_summary }" >> temp.txt
echo "}" >> temp.txt
done

for project in magical_fortress summon_extraplanars orb_of_omniscience enchant_legendary_artifact battlemage_academy theatre_of_simulacra lichdom homunculus unique_project_1 unique_project_2 unique_project_3 unique_project_4 unique_project_5 unique_project_6 unique_project_7 unique_project_8
do
echo ""
done

#Delete after Magic Rework is done!