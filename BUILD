load("@rules_java//java:defs.bzl", "java_binary")

java_binary(
    name = "jlox",
    srcs = glob(["src/main/java/com/numine777/lox/*.java"]),
    main_class = "com.numine777.lox.Lox",
)

java_binary(
    name = "generate",
    srcs = ["src/main/java/com/numine777/tool/GenerateAst.java"],
    main_class = "com.numine777.tool.GenerateAst",
    # TODO: Fix this -- not sure why bazel makes this so hard
    args = ["/home/scott/personal/jlox/src/main/java/com/numine777/lox"],
)

java_binary(
    name = "print_ast",
    srcs = glob(["src/main/java/com/numine777/lox/*.java"]),
    main_class = "com.numine777.lox.AstPrinter",
)
