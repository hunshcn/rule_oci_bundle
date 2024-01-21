workspace(name = "rule_oci_bundle")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_oci",
    sha256 = "686f871f9697e08877b85ea6c16c8d48f911bf466c3aeaf108ca0ab2603c7306",
    strip_prefix = "rules_oci-1.5.1",
    url = "https://github.com/bazel-contrib/rules_oci/releases/download/v1.5.1/rules_oci-v1.5.1.tar.gz",
)

load("@rules_oci//oci:dependencies.bzl", "rules_oci_dependencies")

rules_oci_dependencies()

load("@rules_oci//oci:repositories.bzl", "LATEST_CRANE_VERSION", "oci_register_toolchains")

oci_register_toolchains(
    name = "oci",
    crane_version = LATEST_CRANE_VERSION,
    # Uncommenting the zot toolchain will cause it to be used instead of crane for some tasks.
    # Note that it does not support docker-format images.
    # zot_version = LATEST_ZOT_VERSION,
)

http_archive(
    name = "container_structure_test",
    sha256 = "716ad4b8151da543923f2978edc7f0b10284bd4c7e382927e72caa1d15b644ef",
    strip_prefix = "container-structure-test-0c5cfe02944b6ab468980bc8e08eea36231a1dd1",
    urls = [
        "https://github.com/GoogleContainerTools/container-structure-test/archive/0c5cfe02944b6ab468980bc8e08eea36231a1dd1.tar.gz",
    ],
)

load("@container_structure_test//:repositories.bzl", "container_structure_test_register_toolchain")

container_structure_test_register_toolchain(name = "cst")
