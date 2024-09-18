import useSound from "use-sound"
import testSoundFile from "../sounds/test.wav"

function Test(): JSX.Element {
    const [testSound] = useSound(testSoundFile)
    return (
        <>
            <button onClick={() => testSound()}>Play Sound</button>
        </>
    )
}

export default Test
