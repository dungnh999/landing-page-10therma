@echo off
python -c "import os, glob

def get_image_files(folder_path):
    image_files = []
    for root, dirs, files in os.walk(folder_path):
        image_files.extend(glob.glob(os.path.join(root, '*.jpg')))
        image_files.extend(glob.glob(os.path.join(root, '*.png')))
    return image_files

set folder_path=đường/dẫn/đến/thư/mục/gốc
python -c "from your_script import get_image_files; print(get_image_files('%folder_path%'))"
pause