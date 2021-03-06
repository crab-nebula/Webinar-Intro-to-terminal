#!/bin/sh

echo "The command grep stands for 'globally search for regular expression and print out'.\n It is used to search for a particular pattern of characters in a file. It will display all lines that contain that pattern.\n The common syntax is: grep [option] pattern [filename].\n"
echo "To see all the possible functionalities of this command, we will use a new file called 'benefitsdiversity.txt' that we already created for you.\n"
read next
cat >benefitsdiversity.txt <<EOF
Benefits of diversity
The benefits of a diverse workforce are numerous and well documented. 
Forbes, for example, has found that close to 85% of large global enterprises believe that workforce diversity is critical in driving innovation and that teams with equal numbers of men and women generate on average 41% more revenue for their employer. 
I could go on, but you get the idea. Every person holds a different set of experiences, perspectives and ways of identifying solutions to problems. 
We all have a different view of the world – the more ways we can perceive a problem, the higher the likelihood that we can solve them. 
Very few industries rely on individual genius to drive them forward. Instead, most STEM fields are based on teamwork to some degree, which means that having this range of attitudes is critical to success.
Professor Scott Page is just one of the many commentators who has suggested that scientific progress often results from having diverse perspectives.
He found that when a group of intelligent people are brought together to solve problems, it’s the diversity of the problem solvers that is usually more important than individual ability.
Put simply, a team of like-minded engineers, mathematicians or scientists, all with the same backgrounds and who have faced similar challenges, will not be as effective as a team with diverse ways of thinking.
A homogenous workforce creates homogenous solutions that are most likely only relevant to people within their social and cultural group.
Equally importantly, focusing on diversity will also help to tackle the ever-growing skills shortages impacting the STEM arena, which commentators such as Wired have described as a 'national crisis'.  
Having a workforce that’s 90% male means that firms are likely to be recruiting from a much smaller talent pool than they potentially could be. After all, it’s hard to develop the best workforce when almost half of it is missing out.
EOF
echo "Type 'cat benefitsdiversity.txt' to see its content.\n"
read next
cat benefitsdiversity.txt
echo "Now let's search for the pattern 'an' typing: 'grep an benefitsdiversity.txt'"
read next
grep an benefitsdiversity.txt
echo "If the string you want to search includes spaces then enclose them inside single or double-quotes.\n Let's search for 'different view' by typing: grep 'different view' benefitsdiversity.txt\n"
read next
grep 'different view' benefitsdiversity.txt
echo "The -i option enables us to search for a string in the given file in a case insensitive manner.\n It matches the words like “We” and “we”.\n Let's search for the word 'benefit': type 'grep -i benefit benefitsdiversity.txt'\n"
read next
grep -i benefit benefitsdiversity.txt
echo "If we want to match exactly a specific word, we could use option -w. Let's type: 'grep -w benefits benefitsdiversity.txt'\n"
read next
grep -w benefits benefitsdiversity.txt
echo "Option -c allows us to find the number of lines that matches the given string/pattern. Let's type: 'grep -c diversity benefitsdiversity.txt'\n"
read next
grep -c diversity benefitsdiversity.txt
echo "Option -n shows the line number of the file with the line matched, while option -v shows the lines that did not contain the pattern. Type first 'grep -n diversity benefitsdiversity.txt' and then 'grep -v diversity benefitsdiversity.txt'\nª"
read next
grep -n diversity benefitsdiversity.txt
read next
grep -v diversity benefitsdiversity.txt
echo "What if we want to find the lines that start or end with a specific pattern? Any ideas?\n Let's try: 'grep ^The benefitsdiversity.txt' and 'grep ability.$ benefitsdiversity.txt' \n"
read next
grep ^The benefitsdiversity.txt
read next
grep ability.$ benefitsdiversity.txt
echo "Finally, if we want to know which files of a directory contain a certain pattern, we should use option -l. If we want to see which lines in those files exactly contain the pattern, we should use option -r, which is a recursive search.\n"
echo "Let's type first 'grep -l and *' and then 'grep -r and *'."
read next
grep -l and *
read next
grep -r and *
echo "Congrats! You got to the end of exercise 2. Now you now how to create new files, display what is inside of them, redirect their content and examine it."