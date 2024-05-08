# FoodRecognition
This repository holds: <br/>
(1) the image DATA used for our food recognition projects<br/>
(2) CODE used to generate a set of pixel coordinates using FM halftoning<br/>
(3) NETWORKS trained on these data

DATA:

The following directory and zipped file contain the same images, a set of all of the images and binary labels. <br/>
[Directory: All Images](https://www.dropbox.com/scl/fo/ubohscymgewrri9wrzlph/AEeZ9XiF1nn98X5GIygpZdc?rlkey=r8zk4nyl56wlywxhoopsmkkmr&dl=0)<br/>
[Zipped File: All Images](https://www.dropbox.com/scl/fi/1m23cu3kg0ut856vdl97x/Images-Full-Dataset.zip?rlkey=61muurme2fs210ghrp5jfl76o&dl=0)<br/>
[Directory: All Labels](https://www.dropbox.com/scl/fo/ysfwrrf7wfrugk0l50hcy/AHLfXHtVk5aXoqXFlsqMOKs?rlkey=r014lqx8etfxzaqohd2pso516&dl=0)<br/>
[Zipped File: All Labels](https://www.dropbox.com/scl/fi/hfey2txvl8rcv8s5d2ept/Labels-Full-Dataset.zip?rlkey=j8se429l0tcb4jfwlbbjdxfk4&dl=0)<br/>

The following directories and zipped files combined contain the same images and labels as the full dataset above. Below, they are organized by 60% train, 20% validation, and 20% testing partitions. The files in each partition are also listed in the csv files: 
[testFiles.csv](https://github.com/mgardner-lab/FoodRecognition/blob/main/testFiles.csv), 
[trainFiles.csv](https://github.com/mgardner-lab/FoodRecognition/blob/main/trainFiles.csv), and 
[valFiles.csv](https://github.com/mgardner-lab/FoodRecognition/blob/main/valFiles.csv).<br/>
[Directory: Training Images](https://www.dropbox.com/scl/fo/xlkw0hncs5dd0rptmgm73/AHJghNjDjvd92E_G8_8oKIE?rlkey=aga41dz0ykz0bfb3ijzit8jv0&dl=0)<br/>
[Zipped File: Training Images](https://www.dropbox.com/scl/fi/dzl75i2hem7rmu7bs6h8z/Images-Train.zip?rlkey=ecyyfcxf85pg1zip4uclfwnq6&dl=0)<br/>
[Directory: Training Labels](https://www.dropbox.com/scl/fo/rhqf24dexx05ve9lfy0qu/AMv6BYh9BwWW0OX0pwEnoho?rlkey=aucqjulx4cyzd8f8i8hhxw5m0&dl=0)<br/>
[Zipped File: Training Labels](https://www.dropbox.com/scl/fi/sl36ree343wfrhqoiti7l/Labels-Train.zip?rlkey=ao1fvux9g88z6gmtdmixgfick&dl=0)<br/>

[Directory: Validation Images](https://www.dropbox.com/scl/fo/artx6tpiemdnrhj0urgee/AGf4rLo9xsy03a54Yi3DFMw?rlkey=2ua7tyjlw3om7b05womkyagkb&dl=0)<br/>
[Zipped File: Validation Images](https://www.dropbox.com/scl/fi/nzro8sfc0qgmhybmwjd10/Images-Val.zip?rlkey=rfksbfmaq292rwc7xleht75gx&dl=0)<br/>
[Directory: Validation Labels](https://www.dropbox.com/scl/fo/6b58vygb4eukiig8sv023/AL7gZfFXRQD74Qqx6UvA9o4?rlkey=cxj2wv19p2kqkdncfi1t8fux5&dl=0)<br/>
[Zipped File: Validation Labels](https://www.dropbox.com/scl/fi/ud2xg8dvkkd5ukfvetn2u/Labels-Val.zip?rlkey=xfyt1y3l3odsq4cfrax1j87to&dl=0)<br/>

[Directory: Testing Images](https://www.dropbox.com/scl/fo/3d2tsg3qrgktwr9w3kbtu/AJhH6QjFUq0idnBNzs4DUD0?rlkey=o5uwv1d31vrdqslnk9z76w488&dl=0)<br/>
[Zipped File: Testing Images](https://www.dropbox.com/scl/fi/67rhzsm32jrcxlq4150j0/Images-Test.zip?rlkey=twf9czo3ozx6vqywvw2j1dshz&dl=0)<br/>
[Directory: Testing Labels](https://www.dropbox.com/scl/fo/xn3urf7iq9zsxsqercrh5/AGQsInTPbXFqi9LdtOihahU?rlkey=pklxz4pizs7hx3bfziwnrtapa&dl=0)<br/>
[Zipped File: Testing Labels](https://www.dropbox.com/scl/fi/0idoy3ez7jpc8imz7vl06/Labels-Test.zip?rlkey=lccrneje5l0nnhe5fy70zaakj&dl=0)<br/><br/>

CODE:

[CreatingCoordinates](https://github.com/mgardner-lab/FoodRecognition/blob/main/CreatingCoordinates.m) contains code to generate a set of pixel coordinates within a label

NETWORKS:

[Trained DeepLabv3+ Network (MATLAB .mat file)](https://www.dropbox.com/scl/fi/6rk0dh36if6wcsoew9mzh/DeepLabv3p_FoodBin17k.mat?rlkey=fc1jajso0twsbrm34ipeorh74&dl=0)
