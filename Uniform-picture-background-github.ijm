run("Close All");
run("Clear Results");

run("Set Measurements...", "mean standard limit add redirect=None decimal=3");

open("Fill in the path of picture 1 here");
// Fill in the path of picture 1 here/在这里填写图片1的路径
// For example, D:/Code/input/1.jpg
run("Lab Stack");
run("Duplicate...", "duplicate channels=1");
run("Measure");

open("Fill in the path of picture 2 here");
//Fill in the path of picture 2 here/在这里填写图片2的路径
//For example, D:/Code/input/2.jpg
run("Lab Stack");
run("Duplicate...", "duplicate channels=1");
run("Measure");

lm1 = getResult("Mean",0);
ls1 = getResult("StdDev",0);
lm2 = getResult("Mean",1);
ls2 = getResult("StdDev",1);

selectImage("1-1.jpg");
run("Subtract...", "value=lm1");
run("Divide...", "value=ls1");
run("Multiply...", "value=ls2");
run("Add...", "value=lm2");
selectImage("2-1.jpg");
close();



selectImage("1.jpg");
run("Duplicate...", "duplicate channels=2");
run("Measure");

selectImage("2.jpg");
run("Duplicate...", "duplicate channels=2");
run("Measure");

am1 = getResult("Mean",2);
as1 = getResult("StdDev",2);
am2 = getResult("Mean",3);
as2 = getResult("StdDev",3);

selectImage("1-2.jpg");
run("Subtract...", "value=am1");
run("Divide...", "value=as1");
run("Multiply...", "value=as2");
run("Add...", "value=am2");
selectImage("2-1.jpg");
close();



selectImage("1.jpg");
run("Duplicate...", "duplicate channels=3");
run("Measure");

selectImage("2.jpg");
run("Duplicate...", "duplicate channels=3");
run("Measure");

bm1 = getResult("Mean",4);
bs1 = getResult("StdDev",4);
bm2 = getResult("Mean",5);
bs2 = getResult("StdDev",5);

selectImage("1-3.jpg");
run("Subtract...", "value=bm1");
run("Divide...", "value=bs1");
run("Multiply...", "value=bs2");
run("Add...", "value=bm2");
selectImage("2-1.jpg");
close();



run("Concatenate...", "keep image1=1-1.jpg image2=1-2.jpg image3=1-3.jpg image4=[-- None --]");
saveAs("Tiff", "Fill in the path of the export folder here/1_output.tif");
//Fill in the path of the export folder here/在这里填写导出文件夹的路径
//For example, D:/Code/output