replace grossbuildingfloorareaftâ=subinstr(grossbuildingfloorareaftâ,"Not Available",".",.)
destring grossbuildingfloorareaftâ, replace

replace energystarscore=subinstr(energystarscore,"Not Available",".",.)
destring energystarscore, replace

replace  siteenergyuseintensityeuikbtuftâ=subinstr(siteenergyuseintensityeuikbtuftâ,"Not Available",".",.)
destring  siteenergyuseintensityeuikbtuftâ, replace

replace  sourceenergyuseintensityeuikbtuf=subinstr(sourceenergyuseintensityeuikbtuf,"Not Available",".",.)
destring  sourceenergyuseintensityeuikbtuf, replace

replace weathernormalizedsiteenergyusein=subinstr(weathernormalizedsiteenergyusein,"Not Available",".",.)
destring weathernormalizedsiteenergyusein, replace

replace weathernormalizedsourceenergyuse=subinstr(weathernormalizedsourceenergyuse,"Not Available",".",.)
destring weathernormalizedsourceenergyuse, replace

replace carbondioxideemissionsmetrictonc=subinstr(carbondioxideemissionsmetrictonc,"Not Available",".",.)
destring carbondioxideemissionsmetrictonc, replace

replace indoorwaterusekgal=subinstr(indoorwaterusekgal,"Not Available",".",.)
destring indoorwaterusekgal, replace

replace indoorwaterintgalftâ=subinstr(indoorwaterintgalftâ,"Not Available",".",.)
destring indoorwaterintgalftâ, replace

replace outdoorwaterusekgal=subinstr(outdoorwaterusekgal,"Not Available",".",.)
destring outdoorwaterusekgal, replace

replace totalwaterusekgal=subinstr(totalwaterusekgal,"Not Available",".",.)
destring totalwaterusekgal, replace

reg energystarscore grossbuildingfloorareaftâ weathernormalizedsiteenergyusein

reg grossbuildingfloorareaftâ  energystarscore totalwaterusekgal

scatter grossbuildingfloorareaftâ  totalwaterusekgal

gen l_totalwater=log(totalwaterusekgal)

scatter l_totalwater energystarscore
