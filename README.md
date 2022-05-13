#installation
nainstalovat si requirements pomocou "pip install -r requirements.txt"
nainstalovat si selenium kniznicu (je zahrnuta v requirements, avsak ja musim este osobitne doinstalovat) pouzijeme prikaz "pip install robotframework-seleniumlibrary"
nainstalovat si chromedriver - tento chrome driver stiahnem podla verzie chromu a vlozim tam, kde mam python.exe (funguje na win)
nainstalovat string library - staci ak sa vlozi do keyword resources ako ju tam mam ja.

#run
prikaz na sputenie robotu "robot --pythonpath Resources Robot" (kedze ja mam robot test vo foldri Robot a je iba jeden, preto oznacujem "cely folder", inak by som pouzil tag)


#notes
Treba si nastavit v settingoch pod Robotframework -> Project vlastnu cestu k resources (["C:/Users/ARTIN/PycharmProjects/LukasFinal/Resources"])
Pokial by zacalo vyskakovat pop up alert s notifikaciami, zadame to do konkretneho stepu nasledovne:
    
    _Sleep    2s
    Handle Alert    DISMISS     timeout=1s_




