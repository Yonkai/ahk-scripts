::GCE::
Send, git checkout experimental
return

::GCM::
Send, git checkout master
return

::GPOM::
Send, git push origin master
return

::GICOM::
Send, git commit -m
return 