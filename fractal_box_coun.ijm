function action(input, output, filename) {
	open(input + filename);
	run("Fractal Box Count...", "box=2,3,4,6,8,12,16,32,64");
	saveAs("Results", output + filename + ".csv");
	run("Close");
}

input = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/edit2/";
output = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/box_count/"

setBatchMode(true);
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
//setBatchMode(false);