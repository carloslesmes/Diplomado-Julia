---
author: "Carlos LESMES"
title: "Markdown con Julia"
date: "2021-01-21"
---




# Primero

Este es un ensayo. Usando Markdown *uno*, **dos**.
Agregando link [julia](www.julialang.org)

```julia
rand(3,3)
```

```
3×3 Array{Float64,2}:
 0.644904  0.115062  0.289606
 0.772929  0.140722  0.742695
 0.50507   0.11004   0.00190439
```




llllll

```julia
sqrt(1-im)
```

```
1.09868411346781 - 0.45508986056222733im
```



```julia
using Distributions, Plots
d = Normal()
d1 = Binomial(10,.3)
p1 = plot(x -> pdf(d,x),-3,3)
```

![](figures/prim_4_1.png)


Bla bla

Con ejemplo de código en linea  2+2 = 4.


```math
f(a) = \frac{1}{2\pi}\int_{0}^{2\pi} (\alpha+R\cos(\theta))d\theta
```

```julia
using Weave
print(list_out_formats())
```

```
["github" => "GitHub Markdown", "md2tex" => "Weave-styled LaTeX", "pandoc2h
tml" => "HTML via intermediate Pandoc Markdown (requires Pandoc 2)", "pando
c" => "Pandoc Markdown", "pandoc2pdf" => "PDF via intermediate Pandoc Markd
own", "texminted" => "LaTeX using minted package for code highlighting", "m
d2html" => "Weave-style HTML", "rst" => "reStructuredText and Sphinx", "mul
timarkdown" => "MultiMarkdown", "md2pdf" => "PDF via Weave-styled LaTeX", "
asciidoc" => "AsciiDoc", "hugo" => "Hugo Markdown (using shortcodes)"]
```


