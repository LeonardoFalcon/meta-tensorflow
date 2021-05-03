BAZEL_TARGET_CPU ??= ""
BAZEL_TARGET_CPU_x86 = "x86"
BAZEL_TARGET_CPU_x86-64 = "k8"
BAZEL_TARGET_CPU_arm = "arm"
BAZEL_TARGET_CPU_aarch64 = "aarch64"

python __anonymous() {
    if not d.getVar("BAZEL_TARGET_CPU", True):
        target_arch = d.getVar("TARGET_ARCH", True)
        raise bb.parse.SkipPackage("BAZEL_TARGET_CPU is not set\nTensorFlow does not support Target Arch '%s'" % target_arch)
}
