# Cancer in Africa: The Untold Story
## Original research article submitted to Frontiers in Oncology, Cancer Epidemiology and Prevention, 06 Jan. 2021. 
### Yosr Hamdi, Ines Abdeljaoued-Tej, Afzal Ali Zatchi, Sonia Abdelhak, Samir Boubaker, Joel S. Brown and Alia Benkahla

The worksheets represent the detailed Python code for collating and analyzing the incidence and fatality rates for the 10 most common and fatal cancers in 56 African countries from 5 different African regions (North, West, East, Central, and South) over 16-years (2002–2018). Analysis is performed by gender, by Human Development Index, and by the number of available medical devices. 

Data are available in [PaysdAfrique.xlsx](https://github.com/inestej/cancer_africa/blob/master/PaysdAfrique.xlsx) and [regionAfrique.xlsx](https://github.com/inestej/cancer_africa/blob/master/regionsAfrique.xlsx). 
The cancer profile is established in GLOBOCAN using the best available data sources (on cancer incidence and fatality) in a given country; the validity of the national estimates depends on the degree of representativeness and the quality of the information sources. These data are produced by population-based cancer registries (PBCRs). According to the most recent data compiled in Volume XI of the IARC Report on Cancer Incidence in Five Continents, about 15% of the world population was covered by high quality cancer registries by 2010, with lower registration rates in South America (7.5% of the total population), Asia (6.5%) and Africa (13% when considering additional data from the sub-Saharan African registries of the African Cancer Registry Network (https://afcrn.org/)). In Africa, these registries are the only source of relatively unbiased information. 

We classify the 10 cancers into 3 categories based on their risk factors: genetics, environmental/lifestyle and infectious-disease linked cancers. Northern and Southern Africa were most similar in their cancer incidences and fatality rates compared to other African regions, likely due to similarities in urbanization and lifestyle westernization. The most prevalent cancers are breast, bladder and liver cancers in Northern Africa; prostate, lung and colorectal cancers in Southern Africa, and esophageal and cervical cancer in East Africa. The incidence of breast, prostate and cervical cancers are increasing in all African regions, representing a public health burden, particularly in Northern and Southern Africa. Fatality rates for breast cancer have decreased during the last years thanks to increased awareness and improvement in healthcare facilities. In Southern Africa, in particular, fatality rates from prostate and cervical cancer (in 2018) have increased.  In addition, these three cancers are less fatal in Northern and Southern Africa compared to other regions, which correlates with the Human Development Index and the availability of medical devices. With the exception of thyroid cancer, incidence was higher in males than females for the remaining six relevant cancer types. 

We have gathered and analyzed the fluctuation in incidence and fatality rates for the 10 most common and fatal cancers in 5 different regions (North, West, East, Central and South) over a 16-year period (2002-2018). We classified the 10 studied cancers into 3 categories based on their risk factors: genetics, environmental/lifestyle and infectious-disease linked cancers. The incidence of breast, prostate and cervical cancers are increasing in all African regions, representing a public health burden, particularly in Northern and Southern Africa. Northern and Southern Africa were most similar in their cancer incidences and fatality rates compared to other African regions, likely due to similarities in urbanization and westernization of lifestyles. The most prevalent cancers are breast, bladder and liver cancers in Northern Africa; prostate, lung and colorectal cancers in Southern Africa, and esophageal and cervical cancer in East Africa. Fatality rates for breast cancer have decreased during the last years thanks to efforts devoted to awareness and improvement of healthcare facilities. In Southern Africa, in particular, fatality rates from prostate cancer and cervical cancer (in 2018) have increased.  In addition, these three cancers are less fatal in Northern and Southern Africa compared to other regions, which correlates with the Human Development Index and the availability of medical devices. With the exception of thyroid cancer, our results showed that all  remaining nine cancer types have higher incidences in males than females. 

Our results highlight the urgent need for African countries to put cancer in the forefront of health care priorities. The African continent suffers from a shortage of medical equipment, medical staff and epidemiological expertise. We see a need for implementing more accurate preventive strategies to tackle this disease as many cases are likely preventable. Opportunities exist for vaccination programs for cervical and liver cancer, genetic testing and use of new targeted therapies for breast and prostate cancer, and positive changes in lifestyle for lung, colorectal and bladder cancers. Such recommendations should be tailored for the different African regions depending on their disease profiles and specific needs. 


[Breast cancer](https://github.com/inestej/cancer_africa/blob/master/BreastCancerAfrica.ipynb), 
[Prostate cancer](https://github.com/inestej/cancer_africa/blob/master/ProstateCancerAfrica.ipynb), 
[Cervical cancer](https://github.com/inestej/cancer_africa/blob/master/CervicalCancerAfrica.ipynb), 
[Lung cancer](https://github.com/inestej/cancer_africa/blob/master/LungCancerAfrica.ipynb), 
[Stomach cancer](https://github.com/inestej/cancer_africa/blob/master/StomachCancerAfrica.ipynb), 
[Colorectal Cancer](https://github.com/inestej/cancer_africa/blob/master/ColorectalCancerAfrica.ipynb), 
[Esophageal cancer](https://github.com/inestej/cancer_africa/blob/master/EosophagusCancerAfrica.ipynb), 
[Liver cancer](https://github.com/inestej/cancer_africa/blob/master/LiverCancerAfrica.ipynb), 
[Bladder cancer](https://github.com/inestej/cancer_africa/blob/master/BladderCancerAfrica.ipynb) and 
[Thyroid cancer](https://github.com/inestej/cancer_africa/blob/master/ThyroidCancerAfrica.ipynb). 

#### Available medical devices
Medical devices data including equipment for Computed Tomography, Magnetic Resonance Imaging, Positron Emission Tomography, Gamma Camera or
Nuclear Medicine, Linear accelerator, Telecobalt unit, Radiotherapy, Mammographs1 were extracted from
WHO (https://apps.who.int/gho/data/node.country). Data are available in 
[Medical devices Africa.xlsx](https://github.com/inestej/cancer_africa/blob/master/Medical%20Devices%20Africa.xlsx). 
The code producing descriptive results is developed in Python: 
[Medical devices code](https://github.com/inestej/cancer_africa/blob/master/Medical_devices.ipynb) and 

#### Human Development Index (HDI) and Cancer (Breast, Prostate & Cervical)
The Human Development Index (HDI) is a summary measure of achievement in key dimensions of
human development: a long and healthy life, standard of living, and education levels. The HDI is the
geometric mean of normalized indices for each of these three dimensions. It also offers other composite
indices as broader proxies for some of the key issues of human development such as wealth or income
inequality, gender disparity, and poverty rates. Country specific HDI data were downloaded from UNESCO
(http://uis.unesco.org/). Available code is developed in R [HDI code](https://github.com/inestej/cancer_africa/blob/master/hdi_versus_cancer.R).



