echo audio file is $1; text file is $2
python3 -m aeneas.tools.execute_task $1 $2 "task_language=eng|is_text_type=plain|os_task_file_format=srt" out.srt
