# Cancer in Africa: The Untold Story
## Original research article submitted to Frontiers in Oncology, Cancer Epidemiology and Prevention, 06 Jan. 2021. 
### Yosr Hamdi, Ines Abdeljaoued-Tej, Afzal Ali Zatchi, Sonia Abdelhak, Samir Boubaker, Joel S. Brown and Alia Benkahla

To enable the reproducibility of our work, all scripts and material used for the data extraction and analysis were share in GitHub. The worksheets represent the detailed Python script for collating and analyzing the incidence and fatality rates for the 10 most common and fatal cancers in 56 African countries from 5 different African regions (North, West, East, Central, and South) over 16-years (2002–2018). Analysis is performed by gender, by Human Development Index, and by the number of available medical devices. The data were analyzed by region, cancer type (and for some cancer types, again by gender), measures of socioeconomic status, and availability of medical technology.

Data are available in [PaysdAfrique.xlsx](https://github.com/inestej/cancer_africa/blob/master/PaysdAfrique.xlsx) and [regionAfrique.xlsx](https://github.com/inestej/cancer_africa/blob/master/regionsAfrique.xlsx). The cancer profile is established in GLOBOCAN using the best available data sources (on cancer incidence and fatality) in a given country; the validity of the national estimates depends on the degree of representativeness and the quality of the information sources. These data are produced by population-based cancer registries (PBCRs). According to the most recent data compiled in Volume XI of the IARC Report on Cancer Incidence in Five Continents, about 15% of the world population was covered by high quality cancer registries by 2010, with lower registration rates in South America (7.5% of the total population), Asia (6.5%) and Africa (13% when considering additional data from the sub-Saharan African registries of the African Cancer Registry Network (https://afcrn.org/)). In Africa, these registries are the only source of relatively unbiased information.

To enable the reproducibility of our work, all scripts and material used for the data extraction and analysis were shared:
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
Medical devices data including equipment for Computed Tomography, Magnetic Resonance Imaging, Positron Emission Tomography, Gamma Camera or Nuclear Medicine, Linear accelerator, Telecobalt unit, Radiotherapy, Mammographs1 were extracted from WHO (https://apps.who.int/gho/data/node.country). The source is the Global Atlas of Medical Devices established in 2017 by the World Health Organization. Data are available in [Medical devices Africa.xlsx](https://github.com/inestej/cancer_africa/blob/master/Medical%20Devices%20Africa.xlsx). 
The script producing descriptive results is developed in Python: Medical devices code.
[Medical devices code](https://github.com/inestej/cancer_africa/blob/master/Medical_devices.ipynb).

For the calculation of MAM, let's take the case of Botswana from Table S13 (in the Supplementary materials of the paper). The density of women aged between 50 and 69 is equal to 5.8 i.e. 5.8% of the population is constituted of women aged between 50-69. On the other hand, there are 19.10 MAMs for women aged 50-60 years in 1,000,000 inhabitants. To obtain the number of MAMs per 1,000,000 inhabitants, we multiplied 5.8 by 19.10 and divided by 100. This gives 1.11 from Table S17 (Supplementary materials of the paper). Detailed information or data on the use of cancer equipment are unfortunately not available.

#### Human Development Index (HDI) and Cancer (Breast, Prostate & Cervical)
The Human Development Index (HDI) is a summary measure of achievement in key dimensions of human development: a long and healthy life, standard of living, and education levels. The HDI is the geometric mean of normalized indices for each of these three dimensions. It also offers other composite indices as broader proxies for some of the key issues of human development such as wealth or income inequality, gender disparity, and poverty rates. Country specific HDI data were downloaded from UNESCO (http://uis.unesco.org/). Available code is developed in R [HDI code](https://github.com/inestej/cancer_africa/blob/master/hdi_versus_cancer.R).


## Citation

