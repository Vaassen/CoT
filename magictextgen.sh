for school in abjuration conjuration divination enchantment evocation illusion necromancy transmutation
do
schoolUpper="$(tr '[:lower:]' '[:upper:]' <<< ${school:0:1})${school:1}" #Mac doesn't have Bash 4
done

#Delete after Magic Rework is done!