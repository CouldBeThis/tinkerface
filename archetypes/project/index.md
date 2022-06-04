+++
draft = "true"
title = "{{ replace .Name "-" " " | title }}"
#slug = "SLUG"
description = "Yet another project"

date = "{{ .Date }}"
lastmod = "{{ .Date }}"

categories = ["Projects"]

tags = [ 
	#"xfce",
    #"xfwm4",
    #"terminal",
    #"linux",
    ]

#series = ""
#type = ""
+++


# {{< param title >}}

```markdown
{{< readfile "SOMEFILE.md" >}}

{{ .Resources.ByType "image" }}

{{ .Resources.ByType "image" }}
```