statementColor="\e[1;36m"
actionColor="\e[1;33m"
colorEnd='\e[0m'

printf "$statementColor \nWelcome to SoftwareLab Notebook $colorEnd \n\n"
printf "${actionColor}Generating a new note for you... $colorEnd \n\n"

currentMonthName=`date +%B`
currentNoteBook=`date +%Y`${currentMonthName}
labNoteBook=notebook/${currentNoteBook}
labNote="${currentMonthName}-`date +%m-%d-%Y`.md"

if test -d ${labNoteBook}; then 
  printf "Notebook ${currentNoteBook} exists \n";
else
  printf "Creating directory ${labNoteBook} \n"
  mkdir $labNoteBook
fi 

if test -f $labNoteBook/$labNote; then
  printf "Labnote already exists \n"
else
  printf "Creating new labnote \n"
  touch ${labNoteBook}/$labNote
  printf "Adding format to labnote \n"
  printf "# ${currentMonthName} `date +%d, %Y`\n\n\n## Lab Notes:\n\n" > ${labNoteBook}/$labNote
  printf "Labnote $labNote created in $labNoteBook"
fi

printf "$statementColor \nLabnote is ready now ready for some awesome notetaking $colorEnd \n\n"

