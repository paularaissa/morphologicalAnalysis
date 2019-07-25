function action(input, output, filename) {
	open(input + filename);
	setBatchMode(true);
	run("Analyze Particles...", "pixel display summarize");
	saveAs("Results", output+filename+".csv");
	run("Close");
}

input = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/edit2/";
output = "/home/paula/Doutoramento/imagesTiff/Myosin_Steady_State_2/features1/";

list = getFileList(input);

setBatchMode(true);
for(i=0; i<list.length; i++){
	action(input, output, list[i]);
}
//setBatchMode(false);