alias math_kernel=/Applications/Mathematica.app/Contents/MacOS/MathKernel
export cur_path=$(pwd)
export nb_path=$cur_path/notebook/
export pdf_path=$cur_path/pdf/
for file in $(ls ./notebook/ | grep nb)
do
    filename=${file%.*}
    echo filename=$filename
    pdfname=$pdf_path$filename.pdf
    echo pdfname=$pdfname
    nbname=$nb_path$filename.nb
    echo nbname=$nbname
    math_kernel -run "SetOptions[First[\$Output],FormatType->StandardForm];
                      UsingFrontEnd[
                          NotebookEvaluate[\"$nbname\",InsertResults->True];
                          nb=NotebookOpen[\"$nbname\"];
                          Export[\"$pdfname\",nb]
                        ];
                      Exit[]"
done
