gcloud ml-engine jobs submit training cpf_object_detection_20180612_07 \
    --runtime-version 1.8 \
    --python-version 3.5 \
    --job-dir=gs://objectdetection-cpf/train\
    --packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz \
    --module-name object_detection.train \
    --region us-central1 \
    --config object_detection/samples/cloud/cloud.yml \
    -- \
    --train_dir=gs://objectdetection-cpf/train \
    --pipeline_config_path=gs://objectdetection-cpf/data_helmet/faster_rcnn_nas_coco.config
