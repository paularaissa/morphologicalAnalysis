function action(input, output, filename) {
	open(input + filename);
	run("Apply LUT");
	run("8-bit");
	setOption("BlackBackground", false);
	run("Make Binary");
	run("Remove Overlay");
	run("Find Edges");
	run("Select Bounding Box (guess background color)");
	run("Crop");
	saveAs("Tiff", output + filename);
	close();
}

input = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/";
output = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/edit2/"

setBatchMode(true);
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
//setBatchMode(false);