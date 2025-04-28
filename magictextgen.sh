for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4

echo " ${school}_experience_mod_val:0 "[This.Get${schoolUpper}XpModPos][This.${school}_experience_mod_val.GetValue][This.Get${schoolUpper}XpModDecimal]%§!"" >> temp.txt
echo " ${school}_experience_mod_string:0 "[This.Get${schoolUpper}AdvancingColor]${schoolUpper}:§! [This.${school}_experience_mod_val.GetName]"" >> temp.txt
echo "" >> temp.txt
echo "defined_text = { #returns green and a plus sign if positive, red if negative, or yellow if 0" >> temp.txt
echo "	name = Get${schoolUpper}XpModPos" >> temp.txt
echo "	random = no" >> temp.txt
echo "	text = { localisation_key = posi_code trigger = { check_variable = { ${school}_experience_mod_val = 0.1 } } }" >> temp.txt
echo "	text = { localisation_key = zero_code trigger = { check_variable = { ${school}_experience_mod_val = 0 } } }" >> temp.txt
echo "	text = { localisation_key = nega_code }" >> temp.txt
echo "}" >> temp.txt
echo "defined_text = { #appends the .0 on the end of a whole number, leaves decimals alone" >> temp.txt
echo "	name = Get${schoolUpper}XpModDecimal" >> temp.txt
echo "	random = no" >> temp.txt
echo "	text = { localisation_key = null trigger = { check_variable = { ${school}_experience_mod_val_deci_portion = 0 } NOT = { check_variable = { ${school}_experience_mod_val_deci_portion = 1 } } } }" >> temp.txt
echo "	text = { localisation_key = append_decimal_code }" >> temp.txt
echo "}" >> temp.txt
echo "defined_text = { #turns the color teal if the country is doing a ${school} advancement" >> temp.txt
echo "	name = Get${schoolUpper}AdvancingColor" >> temp.txt
echo "	random = no" >> temp.txt
echo "	text = { localisation_key = teal_code trigger = { is_overall_advancing_school = { school = ${school} } } }" >> temp.txt
echo "	text = { localisation_key = white_code }" >> temp.txt
echo "}" >> temp.txt
echo "defined_text = { #use this if you want to get everything in a tidy bundle" >> temp.txt
echo "	name = get_${school}_experience_mod" >> temp.txt
echo "	text = { localisation_key = ${school}_experience_mod_string }" >> temp.txt
echo "}" >> temp.txt
echo "" >> temp.txt

done

for project in magical_fortress summon_extraplanars orb_of_omniscience enchant_legendary_artifact battlemage_academy theatre_of_simulacra lichdom homunculus unique_project_1 unique_project_2 unique_project_3 unique_project_4 unique_project_5 unique_project_6 unique_project_7 unique_project_8
do
echo ""
done

#Delete after Magic Rework is done!