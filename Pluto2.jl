### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 592af9c8-3d53-11eb-2948-8bba2d583f1e
begin
using Dates
using PlutoUI	
@bind fecha DateField(default=today())
end

# ╔═╡ 1b4aaf82-0675-11eb-1b20-07ace1dee0e8
begin
using Distributions
using Plots
using StatsPlots
end

# ╔═╡ 482b887c-3d56-11eb-1be0-97c811ec5535
using DataFrames, RDatasets

# ╔═╡ 9a00d67e-1081-11eb-25f8-f5a615d4d182
md"""
# En resumen

Cuaderno (notebook) simple, **reactivo** y *escrito* totalmente en Julia. Veamos algunos ejemplos:
"""

# ╔═╡ a3f6e1ec-1080-11eb-1def-393f6a9866d6
y=[1,2,3]

# ╔═╡ 9b292610-1080-11eb-05a5-bf585221db9c
x=4

# ╔═╡ abb3ad16-1080-11eb-281f-fdb083207e96
2 .^y

# ╔═╡ f82c9daa-0677-11eb-07eb-435641000188
md"""
# La plataforma reactiva Pluto

Este notebook se actualiza a medida que se cambia un valor. Permite utilizar Markdown y escribir ecuaciones con LaTeX:

$$\int_{0}^{1}\frac{1}{\sigma√(2π)}e^{-\left(\frac{x-μ}{σ}\right)^{2}}\,dx$$

Se pueden agregar sliders para las variables dentro y fuera de markdown.

$(@bind μ Slider(1:10; default=0, show_value=true))
$(@bind σ Slider(1:5; default=1, show_value=true))

"""

# ╔═╡ 168cc380-0676-11eb-2d24-5fed2d808828
d=Normal(μ,σ)

# ╔═╡ 76be5b06-0676-11eb-143a-a56a1afdeb1c
p1=plot(x -> pdf(d,x),μ-3*σ,μ+3*σ)

# ╔═╡ 61e076fc-0675-11eb-1f3b-a9b03c598888
d1=Binomial(10,.3)

# ╔═╡ b3d3204e-1082-11eb-39b8-e1c1156d415f
d2=Poisson(3)

# ╔═╡ bae8cb88-1083-11eb-021a-b53f570491fa
@bind nal Slider(10:10:10000; show_value=true)

# ╔═╡ d752a3c6-1082-11eb-2fa6-f1166143b001
r2=rand(d2,nal)

# ╔═╡ f5c4beb6-1082-11eb-2ccb-8ddf0253824c
ea_histogram(r2, bins= :scott, fillalpha=0.4)

# ╔═╡ a4604ff0-10a9-11eb-2c50-6909307f5c73
@bind n Slider(2:9;show_value=true)

# ╔═╡ 0fe53530-1096-11eb-0270-af7a2092278c
begin
using Combinatorics, StatsBase	
pob=1:20
muestras = combinations(pob,n)	
mm=map(x -> mean(x), muestras)
histogram(mm, bins=3*n,title="TLC",label="medias muestrales",xlabel="Medias",ylabel="Probabilidad",fillcolor=:purple)
end

# ╔═╡ 776f61cc-1084-11eb-2f40-d7d6d514ce6d
@bind color ColorStringPicker()

# ╔═╡ 46fea92e-3d54-11eb-3f0d-33c2ef2ad1cb
boxplot(randn(100,3),fillcolor=color)

# ╔═╡ a5944fac-3d54-11eb-3f33-b5375a6ce87a
@bind archivo FilePicker()

# ╔═╡ 7d5f8d6a-3d56-11eb-1569-77f200f14c74
iris = dataset("datasets","iris")

# ╔═╡ f4bd5982-3d56-11eb-30cd-5f254d209514
describe(iris)

# ╔═╡ Cell order:
# ╟─592af9c8-3d53-11eb-2948-8bba2d583f1e
# ╠═9a00d67e-1081-11eb-25f8-f5a615d4d182
# ╠═a3f6e1ec-1080-11eb-1def-393f6a9866d6
# ╟─9b292610-1080-11eb-05a5-bf585221db9c
# ╟─abb3ad16-1080-11eb-281f-fdb083207e96
# ╠═f82c9daa-0677-11eb-07eb-435641000188
# ╟─76be5b06-0676-11eb-143a-a56a1afdeb1c
# ╟─1b4aaf82-0675-11eb-1b20-07ace1dee0e8
# ╟─168cc380-0676-11eb-2d24-5fed2d808828
# ╟─61e076fc-0675-11eb-1f3b-a9b03c598888
# ╟─b3d3204e-1082-11eb-39b8-e1c1156d415f
# ╟─bae8cb88-1083-11eb-021a-b53f570491fa
# ╟─d752a3c6-1082-11eb-2fa6-f1166143b001
# ╟─f5c4beb6-1082-11eb-2ccb-8ddf0253824c
# ╟─0fe53530-1096-11eb-0270-af7a2092278c
# ╟─a4604ff0-10a9-11eb-2c50-6909307f5c73
# ╟─776f61cc-1084-11eb-2f40-d7d6d514ce6d
# ╠═46fea92e-3d54-11eb-3f0d-33c2ef2ad1cb
# ╟─a5944fac-3d54-11eb-3f33-b5375a6ce87a
# ╟─482b887c-3d56-11eb-1be0-97c811ec5535
# ╟─7d5f8d6a-3d56-11eb-1569-77f200f14c74
# ╟─f4bd5982-3d56-11eb-30cd-5f254d209514
