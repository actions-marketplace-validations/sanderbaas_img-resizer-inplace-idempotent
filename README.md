# img-resizer-inplace-idempotent

A GitHub action to resize your images within the folder they are.

```yml
- name: Image Resizer Inplace Idempotent
  uses: sanderbaas/img-resizer-inplace-idempotent@v2
  with:
    # Folder in which images are stored
    target: # default is images
    # Max width for images
    width: # default is 500
    # Max height for images
    height: # default is 9999
```

This action uses `mogrify` at its core. To understand more about the tool and how to define dimensions read this [guide on mogrify](https://imagemagick.org/script/mogrify.php)
