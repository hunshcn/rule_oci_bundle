# rule_oci_bundle

a copy of https://github.com/bazel-contrib/rules_oci/pull/360

## Description

In some offline deployment scenarios, we need to bundle all the images, copy them to the machine through mobile media, and then push them to registry through tools such as crane.

Similar to crane pull --format=oci image1 image2 output-dir, but locally.

## Usage

```starlark
oci_bundle(
    name = "bundle",
    images = {
        "ghcr.io/<OWNER>/image1:tag": ":image1",
        "ghcr.io/<OWNER>/image2:tag": ":image2",
    },
)
```

see detail in [example](example/BUILD.bazel)
