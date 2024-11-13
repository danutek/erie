oc create secret docker-registry ibm-entitlement-key \
    --docker-username=cp \
    --docker-password=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJJQk0gTWFya2V0cGxhY2UiLCJpYXQiOjE2MDMzMTgzMTYsImp0aSI6IjA1MGJmYTVlYzg2NzQzMmI4Y2NlYWNmNmQxYzQyYTAyIn0.x7iqNWic6ZU_x4Z4Sc17TckbC2GdxXARw5CQ1cmcgX4 \
    --docker-server=cp.icr.io
