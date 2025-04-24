for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4
echo "frame = {" >> temp.txt
echo "			number = 4" >> temp.txt
echo "			trigger = { is_overall_${school}_level_3 = yes }" >> temp.txt
echo "		}" >> temp.txt
echo "		frame = {" >> temp.txt
echo "			number = 3" >> temp.txt
echo "			trigger = { is_overall_${school}_level_1 = yes }" >> temp.txt
echo "		}" >> temp.txt
echo "		frame = {" >> temp.txt
echo "			number = 2" >> temp.txt
echo "			trigger = { is_overall_${school}_level_2 = yes }" >> temp.txt
echo "		}" >> temp.txt
echo "		frame = { number = 1 }" >> temp.txt
echo "" >> temp.txt
done

#Delete after Magic Rework is done!