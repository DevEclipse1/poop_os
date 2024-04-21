ASM=nasm
SOURCE=source
BUILD=build

$(BUILD)/poopos.img: $(BUILD)/poopos.bin
	cp $(BUILD)/poopos.bin $(BUILD)/poopos.img
	truncate -s 1K $(BUILD)/poopos.img

$(BUILD)/poopos.bin: $(SOURCE)/poopos.asm
	mkdir -p $(BUILD)
	$(ASM) $(SOURCE)/poopos.asm -f bin -o $(BUILD)/poopos.bin
